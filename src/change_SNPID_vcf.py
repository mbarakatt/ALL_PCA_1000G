import sys

for line in sys.stdin:
    sys.stdout.write(line)
    if line[0:2] != '##':
        # This means we only have one #
        vcf_cols = dict(zip(line[1:].split(), range(len(line[1:].split()))))
        break

assert len(vcf_cols.keys()) > 0


def append_chr(s):
    """Will append 'chr' to a string if it is not already there"""
    return 'chr' + s if 'chr' != s[0:3] else s


for line in sys.stdin:
    sp = line.split()
    new_id = append_chr(sp[vcf_cols['CHROM']]) +\
        'pos' + sp[vcf_cols['POS']] + \
        'ref' + sp[vcf_cols['REF']] + \
        'alt' + sp[vcf_cols['ALT']]
    sp[vcf_cols['ID']] = new_id
    sys.stdout.write('\t'.join(sp) + '\n' )


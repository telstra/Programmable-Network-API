#!/bin/bash
F=${1:-$(dirname $0)/programmable-network.yaml}

# '/^# >>>>delete/,/^# <<<<delete/ d'
# Remove sections delimted by '# >>>>delete' and '# <<<<delete'

# '/^\s*# yamllint/bn'
# skip deleting yamllint instructions (i.e. leave them in the output)

# '/^\s*# [^%]/d' & '/^\s*#[^ ]/d'
# Delete comments, unless they start with '# %'

# '/^\s*#$/d'
# remove comments with no content

# 's/^\(\s*\)# %/\1#/'
# remove the % from '# %' comment

cat $F| \
   sed \
      -e '/^# >>>>delete/,/^# <<<<delete/ d' \
      -e '/^\s*# yamllint/bn' \
      -e '/^\s*# [^%]/d' -e '/^\s*#[^ ]/d' \
      -e :n \
      -e '/^\s*#$/d' \
      -e 's/^\(\s*\)# %/\1#/' |
   sed \
      -e :a \
      -e '/^\n*$/{$d;N;ba' -e '}'

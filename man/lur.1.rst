..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2024, 2025  Pellegrino Prevete

   All rights reserved
   ----------------------------------------------------------------------

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.


=====
lur
=====

-------------------------------------
Local User Repository
-------------------------------------
:Version: lur |version|
:Manual section: 1

Synopsis
========

lur *[options]* *package-name*

Description
===========

The Lur is the local user repository manager of
the Ur.

To build a manually downloaded Ur package
or to automatically retrieve one,
run from the directory containing an universal recipe
user repo:

```bash
lur \
  <ur_package_name>
```

The Lur depends on aspe
to retrieve universal recipes
and on reallymakepkg
to build them.

The Lur is written using the Crash Bash
library.

Options
========

-d repo_dir          Repo directory.
-b build_mode        Values are 'src' or 'fakepkg'
-S origin            Repo origin.
-P publisher         Repo publisher.
-r revision          Target revision.
-w work_dir          Work directory.
-o output_dir        Output directory.
-n                   No build.
-D y/n               Whether to skip dependencies
                     check.

-h                   Display help message.
-c                   Enable color output
-v                   Enable verbose output

Bugs
====

https://github.com/themartiancompany/lur/-/issues

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* aspe
* reallymakepkg
* ur
* fur

.. include:: variables.rst

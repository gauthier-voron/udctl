#
# This file is part of Udctl.
# 
# Udctl is free software: you can redistribute it and/or modify it under the
# terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
# 
# Udctl is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
# 
# You should have received a copy of the GNU General Public License along with
# Udctl. If not, see <https://www.gnu.org/licenses/>.


default: test

test:
	./test/validation

install:
	install -d $(PREFIX)/usr/bin
	install -m755 udctl $(PREFIX)/usr/bin/udctl
	install -m755 udctl-update-home $(PREFIX)/usr/bin/udctl-update-home

.PHONY: default test install

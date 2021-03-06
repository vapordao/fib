// Copyright (C) 2020 Maker Ecosystem Growth Holdings, INC.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.7;

contract Fibber {
    function fib(uint256 N, uint256 f0, uint256 f1) external pure returns (uint256) {
        if (N == 0) return f0;
        if (N == 1) return f1;
        uint256 fN;
        for (uint256 i = 0; i < N - 1; i++) {
            fN = f0 + f1;
            require(fN >= f1);  // overflow
            f0 = f1;
            f1 = fN;
        }
        return fN;
    }
}

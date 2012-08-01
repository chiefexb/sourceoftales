--[[

  Pile of gold that turns into real money on pickup

  Copyright (C) 2012 Erik Schilling

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

--]]

local money = get_item_class("Some Gold Coins")

local amount_min = 10
local amount_max = 20

money:on("pickup", function(user)
    local count = chr_inv_count(user, true, false, money)
    local amount = count * math.random(amount_min, amount_max)
    chr_inv_change(user, money, -count)
    chr_money_change(user, amount)
end)

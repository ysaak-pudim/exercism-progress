function exchange_money(budget, exchange_rate)
    budget / exchange_rate
end

function get_change(budget, exchanging_value)
    budget - exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    denomination * number_of_bills
end

function get_number_of_bills(amount, denomination)
    div(amount, denomination)
end

function get_leftover_of_bills(amount, denomination)
    amount % denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    exchange_fee = (exchange_rate / 100) * spread
    exchange_value = exchange_money(budget, exchange_rate + exchange_fee)
    number_of_bills = get_number_of_bills(exchange_value, denomination)
    get_value_of_bills(denomination, number_of_bills)
end

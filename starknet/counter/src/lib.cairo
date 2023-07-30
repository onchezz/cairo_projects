#[contract]
mod HelloStarknet {
    struct Storage {
        balance: felt252,
    }
    fn Message (msg:felt252){
        msg
    }
    // Increases the balance by the given amount.
    #[external]
    fn increase_balance(amount: felt252) {
        assert(amount != 0, 'Amount cannot be 0');
        balance::write(balance::read() + amount);
    }

    // Returns the current balance.
    #[view]
    fn get_balance() -> felt252 {
        balance::read()
    }
}

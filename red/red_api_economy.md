---
title: Economy API
sidebar: red_sidebar
permalink: /red_api_economy/
last_updated: July 30, 2016
---

These documents provide information on the Economy API and how to use them.

## Accessing Economy
To access the Economy API you need to call it with ``get_cog``.
The best way to do this is to use the following:

```Python
bot.get_cog('Economy').bank
```

## API
The following functions will work for the server its requested in. Unless told otherwise.

### create_account(user)
Creates a new bank account for the user in the current server the function is called in.
A Legacy bank account will retrieve there old balance if it exists. When a bank account already exists the function will raise ``AccountAlreadyExists()``

### account_exists(user)
Returns ``True`` if the account exists on the server, else returns ``False`` when the account doesn't exist.

### withdraw_credits(user, amount)
Withdraws the credits from a user. If the user has insufficient balance, the function will raise ``InsufficientBalance()``. Raises ``NoAccount()`` if the user doesn't have a account

### deposit_credits(user, amount)
Deposits a amount of credits. Raises ``NoAccount()`` if the user doesn't have a account

### set_credits(user, amount)
Sets the credits of a user. Raises ``NoAccount()`` if the user doesn't have a account

### transfer_credits(sender, receiver, amount)
Sends a number of credits from the ``sender`` to the ``receiver``.
Raises ``NoAccount()`` if one of the users don't have a account.

### can_spend(user, amount)
Checks if the user can spend the amount. Returns ``True``. Else returns ``False``.

### wipe_bank(server)
{% include callout.html content="***WARNING***: This will wipe the **entire** bank from a server, Use with caution. This **cannot** be undone." type="warning" %}
Wipes the bank of a server.

### get_server_accounts(server)
Returns a list of users who have bank accounts in the given server. Sends a empty list if no users are found.  
List template:

```
[Account(id='133801473317404673', name='Red', balance=1750, created_at=datetime.datetime(2016, 7, 5, 23, 42, 13), server=Server Object, member=Member Object)]
```

### get_all_accounts()
Returns a list of users who have bank accounts in *any* server. Sends a empty list if no users are found.  
List template:

```
[Account(id='133801473317404673', name='Red', balance=1750, created_at=datetime.datetime(2016, 7, 5, 23, 42, 13), server=Server Object, member=Member Object)]
```

### get_balance(user)
Returns the balance of a user. Raises ``NoAccount()`` if the user doesn't have a account.

### get_account(user)
Returns the object of the user. Raises ``NoAccount()`` if the user doesn't have a account.

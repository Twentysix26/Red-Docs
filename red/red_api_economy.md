---
title: Economy API
sidebar: red_sidebar
permalink: /red_api_economy/
last_updated: July 30, 2016
---

This document provides information on the Economy API.

## Accessing Economy
To access the Economy API you need to call it with ``get_cog``.
The best way to do this is to use the following:

```Python
bot.get_cog('Economy').bank
```

## API
The following functions will work for the server it's requested in. (Unless told otherwise.)

### create_account(user)
Creates a new bank account for the user in the current server that the function is called in.
A Legacy bank account will retrieve their old balance if it exists. When a bank account already exists the function will raise ``AccountAlreadyExists()``

### account_exists(user)
Returns ``True`` if the account exists on the server, If not returns ``False`` when the account doesn't exist.

### withdraw_credits(user, amount)
Withdraws the credits from a user. If the user has insufficient balance, the function will raise ``InsufficientBalance()``. Raises ``NoAccount()`` if the user doesn't have an account

### deposit_credits(user, amount)
Deposits an amount of credits. Raises ``NoAccount()`` if the user doesn't have an account

### set_credits(user, amount)
Sets the credits of a user. Raises ``NoAccount()`` if the user doesn't have an account

### transfer_credits(sender, receiver, amount)
Sends a number of credits from the ``sender`` to the ``receiver``.
Raises ``NoAccount()`` if one of the users don't have an account.

### can_spend(user, amount)
Checks if the user can spend the amount. Returns ``True``. If not returns ``False``.

### wipe_bank(server)
{% include callout.html content="***WARNING***: This will wipe the **entire** bank from a server, Use with caution. This **cannot** be undone." type="warning" %}
Wipes the bank of a server.

### get_server_accounts(server)
Returns a list of accounts objects of all accounts present in the server. Sends an empty list if no accounts are found.  
Example:

```
[Account(id='133801473317404673', name='Red', balance=1750, created_at=datetime.datetime(2016, 7, 5, 23, 42, 13), server=Server Object, member=Member Object)]
```

### get_all_accounts()
Returns a list of accounts objects of all accounts present in all servers. Sends an empty list if no users are found.  
Example:

```
[Account(id='133801473317404673', name='Red', balance=1750, created_at=datetime.datetime(2016, 7, 5, 23, 42, 13), server=Server Object, member=Member Object)]
```

### get_balance(user)
Returns the balance of a user. Raises ``NoAccount()`` if the user doesn't have an account.

### get_account(user)
Returns the object of the user. Raises ``NoAccount()`` if the user doesn't have an account.

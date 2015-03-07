# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.delete_all

account = Account.create({name: 'Itau'})

Transaction.delete_all

transactions = Transaction.create([
	{date: 1.day.ago,
	 desc: 'transacao 1',
	 value: 13.5,
	 account: account 
	},
	{date: 1.week.ago,
	 desc: 'transacao 2',
	 value: 20.2,
	 account: account 
	},
	{date: 1.month.ago,
	 desc: 'transacao 3',
	 value: 16.3,
	 account: account 
	},
	]);


print "#{Transaction.count} transacoes criadas."
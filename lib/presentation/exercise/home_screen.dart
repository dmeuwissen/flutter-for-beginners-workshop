import 'package:flutter/material.dart';
import 'package:flutter_for_beginners_workshop/presentation/exercise/widgets/transaction_card.dart';

/// 4️⃣ Exercise 4: Saving new transactions (in memory)
///
/// 🙋🏽‍ As a user, I want to save new transactions on submit and display them in the transaction feed
///
/// 👩‍💻 By now, your home screen should already have the ability to show a list of
/// kudo transactions and a way to open the transaction form. Now it is time to
/// save your newly created transactions in memory.
///
/// 🔦 Refactor your widget from a [StatelessWidget] to a [StatefulWidget]. It is
/// time to start working with local state!
///
/// ❓We haven't discussed navigation yet. To return data from the [showModalBottomSheet]
/// callback add the following to the callback when you submit your form to close the modal and return the transaction.
/// ```dart
/// Navigator.of(context).pop(/*return your transaction here*/);
/// ```
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    // 💡 For exercise 1 use this transaction and pass this down to your TransactionCard to see your widget in action
    // ```final transaction = Transaction.dummyTransactions.first```;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: const [TransactionCard()],
      ),
      floatingActionButton: null,
    );
  }
}

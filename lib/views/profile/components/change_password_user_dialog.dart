import 'package:flutter/material.dart';

class ChangePasswordDialog extends StatefulWidget {
  final Function(String, String, String) onPasswordChanged;

  const ChangePasswordDialog({super.key, required this.onPasswordChanged});

  @override
  _ChangePasswordDialogState createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  bool _isPasswordMatch() {
    return newPasswordController.text == confirmNewPasswordController.text;
  }

  void _onChangePassword() {
    if (_isPasswordMatch()) {
      widget.onPasswordChanged(
        currentPasswordController.text,
        newPasswordController.text,
        confirmNewPasswordController.text,
      );
      Navigator.of(context).pop();
    } else {
      // Hiển thị thông báo lỗi hoặc xử lý không khớp mật khẩu
      // Ví dụ: hiển thị snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mật khẩu mới và mật khẩu xác nhận không khớp.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Đổi Mật Khẩu'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            TextField(
              controller: currentPasswordController,
              decoration: const InputDecoration(hintText: 'Mật khẩu hiện tại'),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: newPasswordController,
              decoration: const InputDecoration(hintText: 'Mật khẩu mới'),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: confirmNewPasswordController,
              decoration: const InputDecoration(hintText: 'Xác nhận mật khẩu mới'),
              obscureText: true,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Hủy'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          onPressed: _onChangePassword,
          child: const Text('Xác nhận'),
        ),
      ],
    );
  }
}

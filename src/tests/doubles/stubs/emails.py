from notifications import EmailSenderInterface


class StubEmailSender(EmailSenderInterface):

    def send_activation_email(self, email: str, activation_link: str) -> None:
        return None

    def send_activation_complete_email(self, email: str, login_link: str) -> None:
        return None

    def send_password_reset_email(self, email: str, reset_link: str) -> None:
        return None

    def send_password_reset_complete_email(self, email: str, login_link: str) -> None:
        return None

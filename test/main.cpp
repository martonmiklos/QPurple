#include <QtCore/QCoreApplication>
#include "../qpurple.h"
#include <iostream>
#include <string>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qpurple_init();

    PurpleAccount *theAccount;
    std::string accountUsername, accountPassword;

    std::cout << "XMPP username: ";
    std::getline(std::cin,accountUsername);
    accountPassword = getpass("Password:");

    /* Create the account */
    theAccount = purple_account_new(accountUsername.c_str(), "prpl-jabber");
    /* Get the password for the account */
    purple_account_set_password(theAccount, accountPassword.c_str());
    /* It's necessary to enable the account first. */
    purple_account_set_enabled(theAccount, UI_ID, TRUE);
    return a.exec();
}

source "GPG_TTY=`tty` gpg -dq ~/.mutt/gmail.com.pwds.gpg |"

set hostname="example.com"
set imap_user="user@example.com"
set imap_pass=$my_imap_pass
set folder="imaps://user@imap.example.com:993"
set spoolfile= +INBOX
set postponed="imaps://user@imap.example.com:993/Drafts"
set record=""

mailboxes "="

set realname="Firstname Surname"
set from="user@example.com"
set smtp_pass=$my_smtp_pass
set smtp_url="smtp://user@smtp.example.com:587"
set ssl_starttls=yes
set ssl_force_tls=yes

set pgp_sign_as="user@example.com"

set signature="~/.mutt/example.com.signature"
set alias_file="~/.mutt/example.com.aliases"
set sort_alias=alias
source $alias_file

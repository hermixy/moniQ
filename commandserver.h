#ifndef COMMANDSERVER_H
#define COMMANDSERVER_H

#include <QtCore/QObject>
#include <QtCore/QList>
#include <QtCore/QByteArray>
#include <QSet>
#include <QString>
#include <QWebSocket>

QT_FORWARD_DECLARE_CLASS(QWebSocketServer)
QT_FORWARD_DECLARE_CLASS(QWebSocket)

class CommandServer : public QObject
{
    Q_OBJECT

private:
  QSet<QString> sessions;

public:
    explicit CommandServer(QObject *parent = Q_NULLPTR);
    virtual ~CommandServer();
    void start();
private Q_SLOTS:
    void onNewConnection();
    void processMessage(QString message);
    void socketDisconnected();
    QString respondToCommand(QWebSocket *pClient, QString command, QStringList arguments);

private:
    QWebSocketServer *m_pWebSocketServer;
    QList<QWebSocket *> m_clients;
};

#endif //COMMANDSERVER_H

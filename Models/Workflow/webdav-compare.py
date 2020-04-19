
from webdav3.client import Client
import os,sys,json

TARGETDIR=sys.argv[1]

options = {
 'webdav_hostname': os.environ['SDURL'],
 'webdav_login':    os.environ['SDUSER'],
 'webdav_password': os.environ['SDPWD']
}

client = Client(options)

#client.verify = False # To not check SSL certificates (Default = True)
#client.session.proxies(...) # To set proxy directly into the session (Optional)
#client.session.auth(...) # To set proxy auth directly into the session (Optional)

#client.execute_request("mkdir", 'directory_name')
#client.execute_request("list", '')

#print(client.list())
#print(client.info('FILE'))

remote_files = client.list(TARGETDIR)
#print(remote_files.remove(TARGETDIR+'/'))

for fname in remote_files:
    if fname != TARGETDIR+'/':
        #info = json.load(client.info(fname))
        info = client.info(TARGETDIR+'/'+fname)
        #print(info)
        remotesize = info['size']
        if remotesize is not None:
            locsize = 0
            locpath='./'+fname.replace('-','%2F',1).replace('(','%28').replace(')','%29')
            if os.path.exists(locpath):
                locsize = os.path.getsize(locpath)
            delta = int(remotesize)-locsize
            print(fname+' : Remote='+remotesize+' ; Local='+str(locsize)+' ; Delta = '+str(delta))
            if delta == 0:
                os.remove(locpath)


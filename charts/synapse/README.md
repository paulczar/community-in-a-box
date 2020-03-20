


## Register a User

```bash
$ kubectl -n synapse exec -ti synapse-0 -- \
  /usr/local/bin/register_new_matrix_user \
  -c /config/homeserver.yaml http://127.0.0.1:8008 \
  -u test -p test1234 -a

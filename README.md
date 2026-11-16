# render-vless

A minimal sing-box VLESS + WebSocket node for Render's free tier.

- The container listens on `$PORT` (provided by Render) with plain WebSocket;
  Render terminates TLS at the edge, so clients connect with `wss` on 443.
- The node's UUID is **not** stored in this repo. Set it as an environment
  variable named `UUID` in the Render dashboard.
- Client example:
  `vless://<UUID>@<your-service>.onrender.com:443?encryption=none&security=tls&sni=<your-service>.onrender.com&type=ws&path=%2Fvless-ws`

Free-tier notes: 750 instance hours/month, 5 GB outbound bandwidth/month,
service sleeps after 15 minutes without traffic (about 1 minute to wake).

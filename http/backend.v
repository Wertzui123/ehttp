// Copyright (c) 2019-2022 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.
module http

import wertzui123.tlse

const (
	is_used = true
)

fn (req &Request) ssl_do(port int, method Method, host_name string, path string) !Response {
	mut ssl_conn := tlse.new_ssl_conn()
	ssl_conn.connect(host_name, port)
	req_headers := req.build_request_headers(method, host_name, path)
	ssl_conn.write(req_headers.bytes()) or { return err }
	mut response_bytes := []u8{len: 0xFFFF}
	ssl_conn.read(mut response_bytes)
	response_text := response_bytes.bytestr()
	return parse_response(response_text)
}

{ pkgs ? import <nixpkgs> {}, src ? ./. }:
let theSource = src; in
buildGoModule rec {
   pname = "dnscrypt-proxy";
   version = "2.1.14";
   src = "${theSource}";

   vendorHash = "sha256:0ivzsvsl9p0fawkhm8a5sqw7ql414xpw6s7iq5h6qcv3vp27m5ba";
   proxyVendor = true;

   meta = with lib; {
	description = "A flexible DNS proxy, with support for modern encrypted DNS protocols such as DNSCrypt v2, DNS-over-HTTPS, Anonymized DNSCrypt and ODoH (Oblivious DoH)";
	homepage = "https://github.com/BLKnowledge/dnscrypt-proxy";
	license = licenses.isc;
   };
}

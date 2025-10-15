{ pkgs ? import <nixpkgs> {}, src ? ./. }:
let theSource = src; in
pkgs.buildGoModule rec {
   pname = "dnscrypt-proxy";
   version = "2.1.14";
   src = "${theSource}";

   vendorHash = null;
   proxyVendor = true;

   meta = with pkgs.lib; {
	description = "A flexible DNS proxy, with support for modern encrypted DNS protocols such as DNSCrypt v2, DNS-over-HTTPS, Anonymized DNSCrypt and ODoH (Oblivious DoH)";
	homepage = "https://github.com/BLKnowledge/dnscrypt-proxy";
	license = licenses.isc;
   };
}

{ lib, buildGoModule, fetchFromGitHub }:
buildGoModule rec {
   pname = "dnscrypt-proxy";
   version = "2.1.14";
   src = ./.;

   vendorHash = "";
   proxyVendor = true;

   meta = with lib; {
	description = "A flexible DNS proxy, with support for modern encrypted DNS protocols such as DNSCrypt v2, DNS-over-HTTPS, Anonymized DNSCrypt and ODoH (Oblivious DoH)".
	homepage = "https://github.com/BLKnowledge/dnscrypt-proxy";
	license = licenses.isc;
   };
}

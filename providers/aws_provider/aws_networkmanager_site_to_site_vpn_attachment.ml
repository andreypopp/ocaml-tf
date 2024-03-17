(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_site_to_site_vpn_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_site_to_site_vpn_attachment__timeouts *)

type aws_networkmanager_site_to_site_vpn_attachment = {
  core_network_id : string;  (** core_network_id *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpn_connection_arn : string;  (** vpn_connection_arn *)
  timeouts :
    aws_networkmanager_site_to_site_vpn_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_site_to_site_vpn_attachment *)

let aws_networkmanager_site_to_site_vpn_attachment ?id ?tags
    ?tags_all ?timeouts ~core_network_id ~vpn_connection_arn
    __resource_id =
  let __resource_type =
    "aws_networkmanager_site_to_site_vpn_attachment"
  in
  let __resource =
    {
      core_network_id;
      id;
      tags;
      tags_all;
      vpn_connection_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_site_to_site_vpn_attachment
       __resource);
  ()

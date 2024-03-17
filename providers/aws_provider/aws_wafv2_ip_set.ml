(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafv2_ip_set = {
  addresses : string list option; [@option]  (** addresses *)
  description : string option; [@option]  (** description *)
  ip_address_version : string;  (** ip_address_version *)
  name : string;  (** name *)
  scope : string;  (** scope *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_wafv2_ip_set *)

let aws_wafv2_ip_set ?addresses ?description ?tags
    ~ip_address_version ~name ~scope __resource_id =
  let __resource_type = "aws_wafv2_ip_set" in
  let __resource =
    { addresses; description; ip_address_version; name; scope; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_ip_set __resource);
  ()

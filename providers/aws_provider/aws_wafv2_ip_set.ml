(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafv2_ip_set = {
  addresses: string prop list option; [@option] (** addresses *)
  description: string prop option; [@option] (** description *)
  id: string prop option; [@option] (** id *)
  ip_address_version: string prop;  (** ip_address_version *)
  name: string prop;  (** name *)
  scope: string prop;  (** scope *)
  tags: (string * string prop) list option; [@option] (** tags *)
  tags_all: (string * string prop) list option; [@option] (** tags_all *)
} [@@deriving yojson_of]
(** aws_wafv2_ip_set *)

let aws_wafv2_ip_set ?addresses ?description ?id ?tags ?tags_all  ~ip_address_version ~name ~scope  __resource_id =
  let __resource_type = "aws_wafv2_ip_set" in
  let __resource = {
    addresses;
    description;
    id;
    ip_address_version;
    name;
    scope;
    tags;
    tags_all;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_ip_set __resource);
  ()
  ;;


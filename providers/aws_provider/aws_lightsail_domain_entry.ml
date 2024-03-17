(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_domain_entry = {
  domain_name : string;  (** domain_name *)
  id : string option; [@option]  (** id *)
  is_alias : bool option; [@option]  (** is_alias *)
  name : string;  (** name *)
  target : string;  (** target *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lightsail_domain_entry *)

let aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
    ~target ~type_ __resource_id =
  let __resource_type = "aws_lightsail_domain_entry" in
  let __resource =
    { domain_name; id; is_alias; name; target; type_ }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_domain_entry __resource);
  ()

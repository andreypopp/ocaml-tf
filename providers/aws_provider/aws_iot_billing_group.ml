(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_billing_group__properties = {
  description : string option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** aws_iot_billing_group__properties *)

type aws_iot_billing_group__metadata = {
  creation_date : string;  (** creation_date *)
}
[@@deriving yojson_of]

type aws_iot_billing_group = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  properties : aws_iot_billing_group__properties list;
}
[@@deriving yojson_of]
(** aws_iot_billing_group *)

let aws_iot_billing_group ?id ?tags ?tags_all ~name ~properties
    __resource_id =
  let __resource_type = "aws_iot_billing_group" in
  let __resource = { id; name; tags; tags_all; properties } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_billing_group __resource);
  ()

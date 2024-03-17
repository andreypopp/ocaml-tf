(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_thing_type__properties = {
  description : string option; [@option]  (** description *)
  searchable_attributes : string list option; [@option]
      (** searchable_attributes *)
}
[@@deriving yojson_of]
(** aws_iot_thing_type__properties *)

type aws_iot_thing_type = {
  deprecated : bool option; [@option]  (** deprecated *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  properties : aws_iot_thing_type__properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_type *)

let aws_iot_thing_type ?deprecated ?tags ~name ~properties
    __resource_id =
  let __resource_type = "aws_iot_thing_type" in
  let __resource = { deprecated; name; tags; properties } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_type __resource);
  ()

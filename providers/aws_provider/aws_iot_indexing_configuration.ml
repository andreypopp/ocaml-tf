(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_indexing_configuration__thing_group_indexing_configuration__custom_field = {
  name : string option; [@option]  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_group_indexing_configuration__custom_field *)

type aws_iot_indexing_configuration__thing_group_indexing_configuration__managed_field = {
  name : string option; [@option]  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_group_indexing_configuration__managed_field *)

type aws_iot_indexing_configuration__thing_group_indexing_configuration = {
  thing_group_indexing_mode : string;
      (** thing_group_indexing_mode *)
  custom_field :
    aws_iot_indexing_configuration__thing_group_indexing_configuration__custom_field
    list;
  managed_field :
    aws_iot_indexing_configuration__thing_group_indexing_configuration__managed_field
    list;
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_group_indexing_configuration *)

type aws_iot_indexing_configuration__thing_indexing_configuration__custom_field = {
  name : string option; [@option]  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_indexing_configuration__custom_field *)

type aws_iot_indexing_configuration__thing_indexing_configuration__filter = {
  named_shadow_names : string list option; [@option]
      (** named_shadow_names *)
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_indexing_configuration__filter *)

type aws_iot_indexing_configuration__thing_indexing_configuration__managed_field = {
  name : string option; [@option]  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_indexing_configuration__managed_field *)

type aws_iot_indexing_configuration__thing_indexing_configuration = {
  device_defender_indexing_mode : string option; [@option]
      (** device_defender_indexing_mode *)
  named_shadow_indexing_mode : string option; [@option]
      (** named_shadow_indexing_mode *)
  thing_connectivity_indexing_mode : string option; [@option]
      (** thing_connectivity_indexing_mode *)
  thing_indexing_mode : string;  (** thing_indexing_mode *)
  custom_field :
    aws_iot_indexing_configuration__thing_indexing_configuration__custom_field
    list;
  filter :
    aws_iot_indexing_configuration__thing_indexing_configuration__filter
    list;
  managed_field :
    aws_iot_indexing_configuration__thing_indexing_configuration__managed_field
    list;
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration__thing_indexing_configuration *)

type aws_iot_indexing_configuration = {
  id : string option; [@option]  (** id *)
  thing_group_indexing_configuration :
    aws_iot_indexing_configuration__thing_group_indexing_configuration
    list;
  thing_indexing_configuration :
    aws_iot_indexing_configuration__thing_indexing_configuration list;
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration *)

let aws_iot_indexing_configuration ?id
    ~thing_group_indexing_configuration ~thing_indexing_configuration
    __resource_id =
  let __resource_type = "aws_iot_indexing_configuration" in
  let __resource =
    {
      id;
      thing_group_indexing_configuration;
      thing_indexing_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_indexing_configuration __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_medialive_input__destinations = {
  stream_name : string;  (** stream_name *)
}
[@@deriving yojson_of]
(** aws_medialive_input__destinations *)

type aws_medialive_input__input_devices = { id : string  (** id *) }
[@@deriving yojson_of]
(** aws_medialive_input__input_devices *)

type aws_medialive_input__media_connect_flows = {
  flow_arn : string;  (** flow_arn *)
}
[@@deriving yojson_of]
(** aws_medialive_input__media_connect_flows *)

type aws_medialive_input__sources = {
  password_param : string;  (** password_param *)
  url : string;  (** url *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_input__sources *)

type aws_medialive_input__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_medialive_input__timeouts *)

type aws_medialive_input__vpc = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_medialive_input__vpc *)

type aws_medialive_input = {
  input_security_groups : string list option; [@option]
      (** input_security_groups *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  destinations : aws_medialive_input__destinations list;
  input_devices : aws_medialive_input__input_devices list;
  media_connect_flows :
    aws_medialive_input__media_connect_flows list;
  sources : aws_medialive_input__sources list;
  timeouts : aws_medialive_input__timeouts option;
  vpc : aws_medialive_input__vpc list;
}
[@@deriving yojson_of]
(** aws_medialive_input *)

let aws_medialive_input ?input_security_groups ?tags ?timeouts ~name
    ~type_ ~destinations ~input_devices ~media_connect_flows ~sources
    ~vpc __resource_id =
  let __resource_type = "aws_medialive_input" in
  let __resource =
    {
      input_security_groups;
      name;
      tags;
      type_;
      destinations;
      input_devices;
      media_connect_flows;
      sources;
      timeouts;
      vpc;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_input __resource);
  ()

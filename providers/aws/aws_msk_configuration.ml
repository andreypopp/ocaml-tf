(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kafka_versions : string prop list option; [@option]
      (** kafka_versions *)
  name : string prop;  (** name *)
  server_properties : string prop;  (** server_properties *)
}
[@@deriving yojson_of]
(** aws_msk_configuration *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  kafka_versions : string list prop;
  latest_revision : float prop;
  name : string prop;
  server_properties : string prop;
}

let aws_msk_configuration ?description ?id ?kafka_versions ~name
    ~server_properties __resource_id =
  let __resource_type = "aws_msk_configuration" in
  let __resource =
    ({ description; id; kafka_versions; name; server_properties }
      : aws_msk_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kafka_versions =
         Prop.computed __resource_type __resource_id "kafka_versions";
       latest_revision =
         Prop.computed __resource_type __resource_id
           "latest_revision";
       name = Prop.computed __resource_type __resource_id "name";
       server_properties =
         Prop.computed __resource_type __resource_id
           "server_properties";
     }
      : t)
  in
  __resource_attributes

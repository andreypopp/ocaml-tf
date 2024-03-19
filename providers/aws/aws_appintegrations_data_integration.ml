(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type schedule_config = {
  first_execution_from : string prop;  (** first_execution_from *)
  object_ : string prop; [@key "object"]  (** object *)
  schedule_expression : string prop;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** schedule_config *)

type aws_appintegrations_data_integration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key : string prop;  (** kms_key *)
  name : string prop;  (** name *)
  source_uri : string prop;  (** source_uri *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  schedule_config : schedule_config list;
}
[@@deriving yojson_of]
(** aws_appintegrations_data_integration *)

let schedule_config ~first_execution_from ~object_
    ~schedule_expression () : schedule_config =
  { first_execution_from; object_; schedule_expression }

let aws_appintegrations_data_integration ?description ?id ?tags
    ?tags_all ~kms_key ~name ~source_uri ~schedule_config () :
    aws_appintegrations_data_integration =
  {
    description;
    id;
    kms_key;
    name;
    source_uri;
    tags;
    tags_all;
    schedule_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  source_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ~kms_key
    ~name ~source_uri ~schedule_config __resource_id =
  let __resource_type = "aws_appintegrations_data_integration" in
  let __resource =
    aws_appintegrations_data_integration ?description ?id ?tags
      ?tags_all ~kms_key ~name ~source_uri ~schedule_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appintegrations_data_integration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key =
         Prop.computed __resource_type __resource_id "kms_key";
       name = Prop.computed __resource_type __resource_id "name";
       source_uri =
         Prop.computed __resource_type __resource_id "source_uri";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_connection = {
  connection_name : string prop;  (** connection_name *)
  id : string prop option; [@option]  (** id *)
  provider_type : string prop;  (** provider_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apprunner_connection *)

let aws_apprunner_connection ?id ?tags ?tags_all ~connection_name
    ~provider_type () : aws_apprunner_connection =
  { connection_name; id; provider_type; tags; tags_all }

type t = {
  arn : string prop;
  connection_name : string prop;
  id : string prop;
  provider_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~connection_name
    ~provider_type __resource_id =
  let __resource_type = "aws_apprunner_connection" in
  let __resource =
    aws_apprunner_connection ?id ?tags ?tags_all ~connection_name
      ~provider_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connection_name =
         Prop.computed __resource_type __resource_id
           "connection_name";
       id = Prop.computed __resource_type __resource_id "id";
       provider_type =
         Prop.computed __resource_type __resource_id "provider_type";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

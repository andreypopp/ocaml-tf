(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codestarconnections_connection = {
  host_arn : string prop option; [@option]  (** host_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  provider_type : string prop option; [@option]  (** provider_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codestarconnections_connection *)

let aws_codestarconnections_connection ?host_arn ?id ?provider_type
    ?tags ?tags_all ~name () : aws_codestarconnections_connection =
  { host_arn; id; name; provider_type; tags; tags_all }

type t = {
  arn : string prop;
  connection_status : string prop;
  host_arn : string prop;
  id : string prop;
  name : string prop;
  provider_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?host_arn ?id ?provider_type ?tags ?tags_all
    ~name __resource_id =
  let __resource_type = "aws_codestarconnections_connection" in
  let __resource =
    aws_codestarconnections_connection ?host_arn ?id ?provider_type
      ?tags ?tags_all ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarconnections_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connection_status =
         Prop.computed __resource_type __resource_id
           "connection_status";
       host_arn =
         Prop.computed __resource_type __resource_id "host_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       provider_type =
         Prop.computed __resource_type __resource_id "provider_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

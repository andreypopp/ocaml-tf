(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_bucket = {
  bundle_id : string prop;  (** bundle_id *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket *)

let aws_lightsail_bucket ?force_delete ?id ?tags ?tags_all ~bundle_id
    ~name () : aws_lightsail_bucket =
  { bundle_id; force_delete; id; name; tags; tags_all }

type t = {
  arn : string prop;
  availability_zone : string prop;
  bundle_id : string prop;
  created_at : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  region : string prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let register ?tf_module ?force_delete ?id ?tags ?tags_all ~bundle_id
    ~name __resource_id =
  let __resource_type = "aws_lightsail_bucket" in
  let __resource =
    aws_lightsail_bucket ?force_delete ?id ?tags ?tags_all ~bundle_id
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       bundle_id =
         Prop.computed __resource_type __resource_id "bundle_id";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       force_delete =
         Prop.computed __resource_type __resource_id "force_delete";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       support_code =
         Prop.computed __resource_type __resource_id "support_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes

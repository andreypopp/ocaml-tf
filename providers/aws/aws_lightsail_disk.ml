(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_disk = {
  availability_zone : string prop;  (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  size_in_gb : float prop;  (** size_in_gb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk *)

let aws_lightsail_disk ?id ?tags ?tags_all ~availability_zone ~name
    ~size_in_gb () : aws_lightsail_disk =
  { availability_zone; id; name; size_in_gb; tags; tags_all }

type t = {
  arn : string prop;
  availability_zone : string prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  size_in_gb : float prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~availability_zone ~name
    ~size_in_gb __resource_id =
  let __resource_type = "aws_lightsail_disk" in
  let __resource =
    aws_lightsail_disk ?id ?tags ?tags_all ~availability_zone ~name
      ~size_in_gb ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_disk __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       size_in_gb =
         Prop.computed __resource_type __resource_id "size_in_gb";
       support_code =
         Prop.computed __resource_type __resource_id "support_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

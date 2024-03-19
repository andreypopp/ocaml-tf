(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type source_s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** source_s3_path *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kendra_thesaurus = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  source_s3_path : source_s3_path list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_thesaurus *)

let source_s3_path ~bucket ~key () : source_s3_path = { bucket; key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kendra_thesaurus ?description ?id ?tags ?tags_all ?timeouts
    ~index_id ~name ~role_arn ~source_s3_path () :
    aws_kendra_thesaurus =
  {
    description;
    id;
    index_id;
    name;
    role_arn;
    tags;
    tags_all;
    source_s3_path;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  thesaurus_id : string prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~index_id ~name ~role_arn ~source_s3_path __resource_id =
  let __resource_type = "aws_kendra_thesaurus" in
  let __resource =
    aws_kendra_thesaurus ?description ?id ?tags ?tags_all ?timeouts
      ~index_id ~name ~role_arn ~source_s3_path ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_thesaurus __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       index_id =
         Prop.computed __resource_type __resource_id "index_id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       thesaurus_id =
         Prop.computed __resource_type __resource_id "thesaurus_id";
     }
      : t)
  in
  __resource_attributes

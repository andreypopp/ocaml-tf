(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type catalog_data = {
  about_text : string prop option; [@option]  (** about_text *)
  architectures : string prop list option; [@option]
      (** architectures *)
  description : string prop option; [@option]  (** description *)
  logo_image_blob : string prop option; [@option]
      (** logo_image_blob *)
  operating_systems : string prop list option; [@option]
      (** operating_systems *)
  usage_text : string prop option; [@option]  (** usage_text *)
}
[@@deriving yojson_of]
(** catalog_data *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ecrpublic_repository = {
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  catalog_data : catalog_data list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository *)

let catalog_data ?about_text ?architectures ?description
    ?logo_image_blob ?operating_systems ?usage_text () : catalog_data
    =
  {
    about_text;
    architectures;
    description;
    logo_image_blob;
    operating_systems;
    usage_text;
  }

let timeouts ?delete () : timeouts = { delete }

let aws_ecrpublic_repository ?force_destroy ?id ?tags ?tags_all
    ?timeouts ~repository_name ~catalog_data () :
    aws_ecrpublic_repository =
  {
    force_destroy;
    id;
    repository_name;
    tags;
    tags_all;
    catalog_data;
    timeouts;
  }

type t = {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  registry_id : string prop;
  repository_name : string prop;
  repository_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?force_destroy ?id ?tags ?tags_all ?timeouts
    ~repository_name ~catalog_data __resource_id =
  let __resource_type = "aws_ecrpublic_repository" in
  let __resource =
    aws_ecrpublic_repository ?force_destroy ?id ?tags ?tags_all
      ?timeouts ~repository_name ~catalog_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecrpublic_repository __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
       repository_name =
         Prop.computed __resource_type __resource_id
           "repository_name";
       repository_uri =
         Prop.computed __resource_type __resource_id "repository_uri";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

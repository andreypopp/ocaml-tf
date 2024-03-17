(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecrpublic_repository__catalog_data = {
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
(** aws_ecrpublic_repository__catalog_data *)

type aws_ecrpublic_repository__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository__timeouts *)

type aws_ecrpublic_repository = {
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  catalog_data : aws_ecrpublic_repository__catalog_data list;
  timeouts : aws_ecrpublic_repository__timeouts option;
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository *)

let aws_ecrpublic_repository ?force_destroy ?id ?tags ?tags_all
    ?timeouts ~repository_name ~catalog_data __resource_id =
  let __resource_type = "aws_ecrpublic_repository" in
  let __resource =
    {
      force_destroy;
      id;
      repository_name;
      tags;
      tags_all;
      catalog_data;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecrpublic_repository __resource);
  ()

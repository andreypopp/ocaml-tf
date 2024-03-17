(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecrpublic_repository__catalog_data = {
  about_text : string option; [@option]  (** about_text *)
  architectures : string list option; [@option]  (** architectures *)
  description : string option; [@option]  (** description *)
  logo_image_blob : string option; [@option]  (** logo_image_blob *)
  operating_systems : string list option; [@option]
      (** operating_systems *)
  usage_text : string option; [@option]  (** usage_text *)
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository__catalog_data *)

type aws_ecrpublic_repository__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository__timeouts *)

type aws_ecrpublic_repository = {
  force_destroy : bool option; [@option]  (** force_destroy *)
  id : string option; [@option]  (** id *)
  repository_name : string;  (** repository_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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

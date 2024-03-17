(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kendra_faq__s3_path = {
  bucket : string;  (** bucket *)
  key : string;  (** key *)
}
[@@deriving yojson_of]
(** aws_kendra_faq__s3_path *)

type aws_kendra_faq__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_kendra_faq__timeouts *)

type aws_kendra_faq = {
  description : string option; [@option]  (** description *)
  file_format : string option; [@option]  (** file_format *)
  id : string option; [@option]  (** id *)
  index_id : string;  (** index_id *)
  language_code : string option; [@option]  (** language_code *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  s3_path : aws_kendra_faq__s3_path list;
  timeouts : aws_kendra_faq__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_faq *)

let aws_kendra_faq ?description ?file_format ?id ?language_code ?tags
    ?tags_all ?timeouts ~index_id ~name ~role_arn ~s3_path
    __resource_id =
  let __resource_type = "aws_kendra_faq" in
  let __resource =
    {
      description;
      file_format;
      id;
      index_id;
      language_code;
      name;
      role_arn;
      tags;
      tags_all;
      s3_path;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_faq __resource);
  ()

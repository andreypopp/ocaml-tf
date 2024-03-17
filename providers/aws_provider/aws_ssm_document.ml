(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_document__attachments_source = {
  key : string;  (** key *)
  name : string option; [@option]  (** name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_document__attachments_source *)

type aws_ssm_document__parameter = {
  default_value : string;  (** default_value *)
  description : string;  (** description *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_ssm_document = {
  content : string;  (** content *)
  document_format : string option; [@option]  (** document_format *)
  document_type : string;  (** document_type *)
  name : string;  (** name *)
  permissions : (string * string) list option; [@option]
      (** permissions *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_type : string option; [@option]  (** target_type *)
  version_name : string option; [@option]  (** version_name *)
  attachments_source : aws_ssm_document__attachments_source list;
}
[@@deriving yojson_of]
(** aws_ssm_document *)

let aws_ssm_document ?document_format ?permissions ?tags ?target_type
    ?version_name ~content ~document_type ~name ~attachments_source
    __resource_id =
  let __resource_type = "aws_ssm_document" in
  let __resource =
    {
      content;
      document_format;
      document_type;
      name;
      permissions;
      tags;
      target_type;
      version_name;
      attachments_source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_document __resource);
  ()

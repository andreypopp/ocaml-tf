(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_imagebuilder_workflow = {
  change_description : string option; [@option]
      (** change_description *)
  description : string option; [@option]  (** description *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  uri : string option; [@option]  (** uri *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_workflow *)

let aws_imagebuilder_workflow ?change_description ?description
    ?kms_key_id ?tags ?uri ~name ~type_ ~version __resource_id =
  let __resource_type = "aws_imagebuilder_workflow" in
  let __resource =
    {
      change_description;
      description;
      kms_key_id;
      name;
      tags;
      type_;
      uri;
      version;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_workflow __resource);
  ()
(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_component = {
  change_description : string prop option; [@option]
      (** change_description *)
  data : string prop option; [@option]  (** data *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  platform : string prop;  (** platform *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  supported_os_versions : string prop list option; [@option]
      (** supported_os_versions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  uri : string prop option; [@option]  (** uri *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_component *)

let aws_imagebuilder_component ?change_description ?data ?description
    ?id ?kms_key_id ?skip_destroy ?supported_os_versions ?tags
    ?tags_all ?uri ~name ~platform ~version __resource_id =
  let __resource_type = "aws_imagebuilder_component" in
  let __resource =
    {
      change_description;
      data;
      description;
      id;
      kms_key_id;
      name;
      platform;
      skip_destroy;
      supported_os_versions;
      tags;
      tags_all;
      uri;
      version;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_component __resource);
  ()

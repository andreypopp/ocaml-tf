(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_imagebuilder_component = {
  change_description : string option; [@option]
      (** change_description *)
  description : string option; [@option]  (** description *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  platform : string;  (** platform *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  supported_os_versions : string list option; [@option]
      (** supported_os_versions *)
  tags : (string * string) list option; [@option]  (** tags *)
  uri : string option; [@option]  (** uri *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_component *)

let aws_imagebuilder_component ?change_description ?description
    ?kms_key_id ?skip_destroy ?supported_os_versions ?tags ?uri ~name
    ~platform ~version __resource_id =
  let __resource_type = "aws_imagebuilder_component" in
  let __resource =
    {
      change_description;
      description;
      kms_key_id;
      name;
      platform;
      skip_destroy;
      supported_os_versions;
      tags;
      uri;
      version;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_component __resource);
  ()

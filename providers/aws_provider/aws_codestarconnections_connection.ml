(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codestarconnections_connection = {
  host_arn : string prop option; [@option]  (** host_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  provider_type : string prop option; [@option]  (** provider_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codestarconnections_connection *)

let aws_codestarconnections_connection ?host_arn ?id ?provider_type
    ?tags ?tags_all ~name __resource_id =
  let __resource_type = "aws_codestarconnections_connection" in
  let __resource =
    { host_arn; id; name; provider_type; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarconnections_connection __resource);
  ()

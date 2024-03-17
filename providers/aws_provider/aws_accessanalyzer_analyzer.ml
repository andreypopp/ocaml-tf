(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_accessanalyzer_analyzer__configuration__unused_access = {
  unused_access_age : float option; [@option]
      (** unused_access_age *)
}
[@@deriving yojson_of]
(** aws_accessanalyzer_analyzer__configuration__unused_access *)

type aws_accessanalyzer_analyzer__configuration = {
  unused_access :
    aws_accessanalyzer_analyzer__configuration__unused_access list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_analyzer__configuration *)

type aws_accessanalyzer_analyzer = {
  analyzer_name : string;  (** analyzer_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  configuration : aws_accessanalyzer_analyzer__configuration list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_analyzer *)

let aws_accessanalyzer_analyzer ?tags ?type_ ~analyzer_name
    ~configuration __resource_id =
  let __resource_type = "aws_accessanalyzer_analyzer" in
  let __resource = { analyzer_name; tags; type_; configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_accessanalyzer_analyzer __resource);
  ()

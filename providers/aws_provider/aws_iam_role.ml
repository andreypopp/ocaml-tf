(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_role__inline_policy = {
  name : string option; [@option]  (** name *)
  policy : string option; [@option]  (** policy *)
}
[@@deriving yojson_of]
(** aws_iam_role__inline_policy *)

type aws_iam_role = {
  assume_role_policy : string;  (** assume_role_policy *)
  description : string option; [@option]  (** description *)
  force_detach_policies : bool option; [@option]
      (** force_detach_policies *)
  max_session_duration : float option; [@option]
      (** max_session_duration *)
  path : string option; [@option]  (** path *)
  permissions_boundary : string option; [@option]
      (** permissions_boundary *)
  tags : (string * string) list option; [@option]  (** tags *)
  inline_policy : aws_iam_role__inline_policy list;
}
[@@deriving yojson_of]
(** aws_iam_role *)

let aws_iam_role ?description ?force_detach_policies
    ?max_session_duration ?path ?permissions_boundary ?tags
    ~assume_role_policy ~inline_policy __resource_id =
  let __resource_type = "aws_iam_role" in
  let __resource =
    {
      assume_role_policy;
      description;
      force_detach_policies;
      max_session_duration;
      path;
      permissions_boundary;
      tags;
      inline_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role __resource);
  ()

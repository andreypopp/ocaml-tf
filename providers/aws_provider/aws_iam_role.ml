(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_role__inline_policy = {
  name : string prop option; [@option]  (** name *)
  policy : string prop option; [@option]  (** policy *)
}
[@@deriving yojson_of]
(** aws_iam_role__inline_policy *)

type aws_iam_role = {
  assume_role_policy : string prop;  (** assume_role_policy *)
  description : string prop option; [@option]  (** description *)
  force_detach_policies : bool prop option; [@option]
      (** force_detach_policies *)
  id : string prop option; [@option]  (** id *)
  managed_policy_arns : string prop list option; [@option]
      (** managed_policy_arns *)
  max_session_duration : float prop option; [@option]
      (** max_session_duration *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  permissions_boundary : string prop option; [@option]
      (** permissions_boundary *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  inline_policy : aws_iam_role__inline_policy list;
}
[@@deriving yojson_of]
(** aws_iam_role *)

let aws_iam_role ?description ?force_detach_policies ?id
    ?managed_policy_arns ?max_session_duration ?name ?name_prefix
    ?path ?permissions_boundary ?tags ?tags_all ~assume_role_policy
    ~inline_policy __resource_id =
  let __resource_type = "aws_iam_role" in
  let __resource =
    {
      assume_role_policy;
      description;
      force_detach_policies;
      id;
      managed_policy_arns;
      max_session_duration;
      name;
      name_prefix;
      path;
      permissions_boundary;
      tags;
      tags_all;
      inline_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role __resource);
  ()

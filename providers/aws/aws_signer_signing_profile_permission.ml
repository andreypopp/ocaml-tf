(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_signer_signing_profile_permission = {
  action : string prop;  (** action *)
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  profile_name : string prop;  (** profile_name *)
  profile_version : string prop option; [@option]
      (** profile_version *)
  statement_id : string prop option; [@option]  (** statement_id *)
  statement_id_prefix : string prop option; [@option]
      (** statement_id_prefix *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile_permission *)

let aws_signer_signing_profile_permission ?id ?profile_version
    ?statement_id ?statement_id_prefix ~action ~principal
    ~profile_name () : aws_signer_signing_profile_permission =
  {
    action;
    id;
    principal;
    profile_name;
    profile_version;
    statement_id;
    statement_id_prefix;
  }

type t = {
  action : string prop;
  id : string prop;
  principal : string prop;
  profile_name : string prop;
  profile_version : string prop;
  statement_id : string prop;
  statement_id_prefix : string prop;
}

let make ?id ?profile_version ?statement_id ?statement_id_prefix
    ~action ~principal ~profile_name __id =
  let __type = "aws_signer_signing_profile_permission" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       profile_name = Prop.computed __type __id "profile_name";
       profile_version = Prop.computed __type __id "profile_version";
       statement_id = Prop.computed __type __id "statement_id";
       statement_id_prefix =
         Prop.computed __type __id "statement_id_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_signer_signing_profile_permission
        (aws_signer_signing_profile_permission ?id ?profile_version
           ?statement_id ?statement_id_prefix ~action ~principal
           ~profile_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?profile_version ?statement_id
    ?statement_id_prefix ~action ~principal ~profile_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?profile_version ?statement_id ?statement_id_prefix
      ~action ~principal ~profile_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

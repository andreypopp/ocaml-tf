(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glacier_vault_lock = {
  complete_lock : bool prop;  (** complete_lock *)
  id : string prop option; [@option]  (** id *)
  ignore_deletion_error : bool prop option; [@option]
      (** ignore_deletion_error *)
  policy : string prop;  (** policy *)
  vault_name : string prop;  (** vault_name *)
}
[@@deriving yojson_of]
(** aws_glacier_vault_lock *)

let aws_glacier_vault_lock ?id ?ignore_deletion_error ~complete_lock
    ~policy ~vault_name () : aws_glacier_vault_lock =
  { complete_lock; id; ignore_deletion_error; policy; vault_name }

type t = {
  complete_lock : bool prop;
  id : string prop;
  ignore_deletion_error : bool prop;
  policy : string prop;
  vault_name : string prop;
}

let make ?id ?ignore_deletion_error ~complete_lock ~policy
    ~vault_name __id =
  let __type = "aws_glacier_vault_lock" in
  let __attrs =
    ({
       complete_lock = Prop.computed __type __id "complete_lock";
       id = Prop.computed __type __id "id";
       ignore_deletion_error =
         Prop.computed __type __id "ignore_deletion_error";
       policy = Prop.computed __type __id "policy";
       vault_name = Prop.computed __type __id "vault_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glacier_vault_lock
        (aws_glacier_vault_lock ?id ?ignore_deletion_error
           ~complete_lock ~policy ~vault_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ignore_deletion_error ~complete_lock
    ~policy ~vault_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ignore_deletion_error ~complete_lock ~policy
      ~vault_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

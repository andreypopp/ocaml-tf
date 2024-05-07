(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_identity_policy = {
  id : string prop option; [@option]
  identity : string prop;
  name : string prop;
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_identity_policy) -> ()

let yojson_of_aws_ses_identity_policy =
  (function
   | {
       id = v_id;
       identity = v_identity;
       name = v_name;
       policy = v_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ses_identity_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_identity_policy

[@@@deriving.end]

let aws_ses_identity_policy ?id ~identity ~name ~policy () :
    aws_ses_identity_policy =
  { id; identity; name; policy }

type t = {
  tf_name : string;
  id : string prop;
  identity : string prop;
  name : string prop;
  policy : string prop;
}

let make ?id ~identity ~name ~policy __id =
  let __type = "aws_ses_identity_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_identity_policy
        (aws_ses_identity_policy ?id ~identity ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~identity ~name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~identity ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

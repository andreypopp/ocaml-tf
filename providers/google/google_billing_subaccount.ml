(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_billing_subaccount = {
  deletion_policy : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  master_billing_account : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_billing_subaccount) -> ()

let yojson_of_google_billing_subaccount =
  (function
   | {
       deletion_policy = v_deletion_policy;
       display_name = v_display_name;
       id = v_id;
       master_billing_account = v_master_billing_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_master_billing_account
         in
         ("master_billing_account", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_billing_subaccount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_billing_subaccount

[@@@deriving.end]

let google_billing_subaccount ?deletion_policy ?id ~display_name
    ~master_billing_account () : google_billing_subaccount =
  { deletion_policy; display_name; id; master_billing_account }

type t = {
  billing_account_id : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  id : string prop;
  master_billing_account : string prop;
  name : string prop;
  open_ : bool prop;
}

let make ?deletion_policy ?id ~display_name ~master_billing_account
    __id =
  let __type = "google_billing_subaccount" in
  let __attrs =
    ({
       billing_account_id =
         Prop.computed __type __id "billing_account_id";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       master_billing_account =
         Prop.computed __type __id "master_billing_account";
       name = Prop.computed __type __id "name";
       open_ = Prop.computed __type __id "open";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_billing_subaccount
        (google_billing_subaccount ?deletion_policy ?id ~display_name
           ~master_billing_account ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?id ~display_name
    ~master_billing_account __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?id ~display_name ~master_billing_account
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

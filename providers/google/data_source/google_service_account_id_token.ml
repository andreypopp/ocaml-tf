(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_account_id_token = {
  delegates : string prop list option; [@option]
  id : string prop option; [@option]
  include_email : bool prop option; [@option]
  target_audience : string prop;
  target_service_account : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account_id_token) -> ()

let yojson_of_google_service_account_id_token =
  (function
   | {
       delegates = v_delegates;
       id = v_id;
       include_email = v_include_email;
       target_audience = v_target_audience;
       target_service_account = v_target_service_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_service_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_audience
         in
         ("target_audience", arg) :: bnds
       in
       let bnds =
         match v_include_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_email", arg in
             bnd :: bnds
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
         match v_delegates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "delegates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_service_account_id_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account_id_token

[@@@deriving.end]

let google_service_account_id_token ?delegates ?id ?include_email
    ?target_service_account ~target_audience () :
    google_service_account_id_token =
  {
    delegates;
    id;
    include_email;
    target_audience;
    target_service_account;
  }

type t = {
  delegates : string list prop;
  id : string prop;
  id_token : string prop;
  include_email : bool prop;
  target_audience : string prop;
  target_service_account : string prop;
}

let make ?delegates ?id ?include_email ?target_service_account
    ~target_audience __id =
  let __type = "google_service_account_id_token" in
  let __attrs =
    ({
       delegates = Prop.computed __type __id "delegates";
       id = Prop.computed __type __id "id";
       id_token = Prop.computed __type __id "id_token";
       include_email = Prop.computed __type __id "include_email";
       target_audience = Prop.computed __type __id "target_audience";
       target_service_account =
         Prop.computed __type __id "target_service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account_id_token
        (google_service_account_id_token ?delegates ?id
           ?include_email ?target_service_account ~target_audience ());
    attrs = __attrs;
  }

let register ?tf_module ?delegates ?id ?include_email
    ?target_service_account ~target_audience __id =
  let (r : _ Tf_core.resource) =
    make ?delegates ?id ?include_email ?target_service_account
      ~target_audience __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

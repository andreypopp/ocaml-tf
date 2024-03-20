(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type datasets = {
  description : string prop;
  id : string prop;
  name : string prop;
  secret : bool prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : datasets) -> ()

let yojson_of_datasets =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       secret = v_secret;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : datasets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datasets

[@@@deriving.end]

type cloudflare_dlp_datasets = { account_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_dlp_datasets) -> ()

let yojson_of_cloudflare_dlp_datasets =
  (function
   | { account_id = v_account_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_dlp_datasets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_dlp_datasets

[@@@deriving.end]

let cloudflare_dlp_datasets ~account_id () : cloudflare_dlp_datasets
    =
  { account_id }

type t = { account_id : string prop; datasets : datasets list prop }

let make ~account_id __id =
  let __type = "cloudflare_dlp_datasets" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       datasets = Prop.computed __type __id "datasets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_dlp_datasets
        (cloudflare_dlp_datasets ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ~account_id __id =
  let (r : _ Tf_core.resource) = make ~account_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

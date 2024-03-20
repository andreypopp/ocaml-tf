(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_worker_cron_trigger = {
  account_id : string prop;
  id : string prop option; [@option]
  schedules : string prop list;
  script_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_worker_cron_trigger) -> ()

let yojson_of_cloudflare_worker_cron_trigger =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       schedules = v_schedules;
       script_name = v_script_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script_name in
         ("script_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_schedules
         in
         ("schedules", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_worker_cron_trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_worker_cron_trigger

[@@@deriving.end]

let cloudflare_worker_cron_trigger ?id ~account_id ~schedules
    ~script_name () : cloudflare_worker_cron_trigger =
  { account_id; id; schedules; script_name }

type t = {
  account_id : string prop;
  id : string prop;
  schedules : string list prop;
  script_name : string prop;
}

let make ?id ~account_id ~schedules ~script_name __id =
  let __type = "cloudflare_worker_cron_trigger" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       schedules = Prop.computed __type __id "schedules";
       script_name = Prop.computed __type __id "script_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_cron_trigger
        (cloudflare_worker_cron_trigger ?id ~account_id ~schedules
           ~script_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~schedules ~script_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~schedules ~script_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

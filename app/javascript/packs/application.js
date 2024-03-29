import "bootstrap";

import { addingFormEventListners } from '../components/registration_form';
import { dueDiligenceCheck } from '../components/due-diligence_form';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { checkDuediligence } from '../components/due_diligence_modal';
import { preRenderform } from '../components/due_diligence_form_pre_render';
import { finishDueDiligence } from '../components/due_diligence_finish';

initUpdateNavbarOnScroll();
addingFormEventListners();
dueDiligenceCheck();
checkDuediligence();
preRenderform();
finishDueDiligence();
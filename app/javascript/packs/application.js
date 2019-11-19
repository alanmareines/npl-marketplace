import "bootstrap";

import { addingFormEventListners } from '../components/registration_form';
import { dueDiligenceCheck } from '../components/due-diligence_form';
import { initUpdateNavbarOnScroll } from '../components/navbar'

initUpdateNavbarOnScroll();
addingFormEventListners();
dueDiligenceCheck();